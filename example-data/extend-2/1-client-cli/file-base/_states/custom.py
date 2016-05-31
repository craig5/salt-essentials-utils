import os

def enforce_tmp(name, contents=None):
    """
    Enforce a temp file has the desired contents.

    name
        The name of the file to change. (Under '/tmp'.)
    contents
        The value you will be storing.
    """

    return_dict = {
        'name': name,
        'changes': {},
        'result': False,
        'comment': ''
    }

    tmp_file = os.path.join('/tmp', name)
    file_ok = False
    content_ok = False
    file_contents = None

    if os.path.isfile(tmp_file):
        file_ok = True
        with open(tmp_file, 'r') as fp:
            file_contents = fp.read()
            file_contents = file_contents.rstrip('\n')

    if file_contents == contents:
        content_ok = True

    comments = ""
    if file_ok:
        comments += 'File exists ({0})\n'.format(tmp_file)
    else:
        comments += 'File created ({0})\n'.format(tmp_file)
    if content_ok:
        comments += 'Contents correct ({0})\n'.format(file_contents)
    else:
        comments += 'Contents updated ({0})\n'.format(contents)
    return_dict['comment'] = comments

    # Check if this is a test run, if so do not change anything.
    if __opts__['test'] == True:
        return_dict['result'] = None
        return_dict['changes'] = {}
        if not content_ok:
            return_dict['changes'] = {
                'contents': {
                    'old': file_contents,
                    'new': contents
                }
            }
        return return_dict

    if not content_ok:
        with open(tmp_file, 'w') as fp:
            contents += "\n"
            fp.write(contents)
        return_dict['result'] = True
        return_dict['changes'] = {
            'contents': {
                'old': file_contents,
                'new': contents
            }
        }
    else:
        return_dict['changes'] = {}
        return_dict['result'] = True

    return return_dict
