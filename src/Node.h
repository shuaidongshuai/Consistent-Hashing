#ifndef Node_H
#define Node_H
#include <string>

/* 实体节点 */
class Node
{
public:
	Node(std::string nodeName, int vNodeNum)
		:nodeName(nodeName), vNodeNum(vNodeNum){}
	~Node(){}
	int GetVNodeNum(){ return vNodeNum; }
	std::string GetNodeName(){ return nodeName; }
private:
	std::string nodeName;//节点名，也是服务器名
	int vNodeNum;//虚拟节点个数
};

#endif