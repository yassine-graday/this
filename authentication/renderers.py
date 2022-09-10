import json
import token

from rest_framework.renderers import JSONRenderer
from core.renderers import ConduitJSONRenderer

class UserJSONRenderer(ConduitJSONRenderer):
    object_label = 'data'

    def render(self, data, media_type=None, renderer_context=None):

        #retrieve errors key to check handeling outputs
        errors= data.get('errors',None)

        # bytes objects don't serialize well !! we need to decode token before rendering the object   
        token = data.get('token', None)

        if errors is not None :
            #we will let the default JSONRendrer handle rendering errors
            return super(UserJSONRenderer, self).render(data)
        if token is None and isinstance(token, bytes):
            data['token'] = token.decode('utf-8')

        return super(UserJSONRenderer, self).render(data)    