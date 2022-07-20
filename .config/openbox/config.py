import xml.etree.ElementTree as ET

root_node = ET.parse('rc.xml').getroot()
for child in root_node:
    print(child.tag.title())
    for smaller_child in child:
        print("\t" + str(smaller_child.tag))

for keyboard in root_node.iter('keyboard'):
    print(keyboard.tag)
