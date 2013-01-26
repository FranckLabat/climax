package Data
{
	import flash.text.engine.ContentElement;
	
	/**
	 * ...
	 * @author Franck labat
	 */
	public class Node
	{
		public var id:int;
		private var content:Content;
		private var title:String;
		private var predecessor:Node;
		private var successors:Vector.<Node> = new Vector.<Node>();
		
		public function Node() 
		{
		}
		
		public function setContent(content:Content):void {
			this.content = content;
		}
		
		public function getSuccessors():Vector.<Node>
		{
			return successors;
		}
		
		/**
		 *
		 * @param	successor
		 */
		public function addSuccessor(successor:Node):void 
		{
			successors.push(successor);
		}
		
		/**
		 * 
		 * @param	predecessor
		 */
		public function addPredecessor(predecessor:Node):void 
		{
			this.predecessor = predecessor;
		}
		
		/**
		 * Play any content
		 * @param	content
		 */
		protected function Play(content:Content):void
		{
			content.play();
		}
		
		public function setTitle(title:String):void
		{
			this.title = title;
		}
		
		public function toString():String
		{
			//TODO: print the content after finishing content classes 
			return id + title + " ";// + content.toString() + " ";
		}
	}
}