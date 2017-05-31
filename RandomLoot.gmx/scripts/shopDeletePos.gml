///shopDeletePos(int pos)
// shift all goods up
for (var i = argument[0]; i < goodsCnt - 1; i++)
{
    var inext = i + 1;
    goodsClass[i] = goodsClass[inext];
    goodsId[i] = goodsId[inext];
    goodsName[i] = goodsName[inext];
    goodsDesc[i] = goodsDesc[inext];
    goodsSpr[i] = goodsSpr[inext];
    goodsImg[i] = goodsImg[inext];
    goodsPrice[i] = goodsPrice[inext];
    goodsXoff[i] = goodsXoff[inext];
    goodsYoff[i] = goodsYoff[inext];
}
goodsCnt--;

