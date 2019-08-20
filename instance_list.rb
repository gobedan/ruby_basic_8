module InstanceList
  def self.included(base)
   base.include(InstanceMethods)
   base.extend(ClassMethods)    
  end

  module InstanceMethods
    protected
    
    def register_instance_in_list
      self.class.instance_list.push(self)
    end
  end

  module ClassMethods
    @@instance_list = []
    
    def instance_list
      @@instance_list
    end   
  end
end
