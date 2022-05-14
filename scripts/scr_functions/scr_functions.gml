function fn_indexer(ind,maxind)
{
	if(ind > maxind) return ind%maxind;
	else if(ind < 0) return maxind+ind;
	else return ind;
}

