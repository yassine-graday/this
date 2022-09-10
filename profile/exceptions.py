""" from rest_framework.exceptions import APIException

class ProfileDoesNotExist(APIException):
    status_code = 404
    default_detail = 'the requested profile does not exist.'  """