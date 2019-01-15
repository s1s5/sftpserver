# coding: utf-8
from django.core.files.storage import Storage

class RDSStorage(Storage):
    def __init__(self, name="default", branch=None):
        pass

    def _open(self, name, mode='rb'):
        pass

    def _save(self, name, content):
        pass

    def path(self, name):
        raise NotImplementedError("This backend doesn't support absolute paths.")

    def delete(self, name):
        pass

    def exists(self, name):
        pass

    def listdir(self, path):
        pass

    def size(self, name):
        pass

    def url(self, name):
        pass

    def get_accessed_time(self, name):
        pass

    def get_created_time(self, name):
        pass

    def get_modified_time(self, name):
        pass
