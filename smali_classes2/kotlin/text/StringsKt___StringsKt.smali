.class Lkotlin/text/StringsKt___StringsKt;
.super Lkotlin/text/StringsKt___StringsJvmKt;
.source "_Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1510:1\n91#1,2:1511\n167#1,5:1513\n416#1,5:1518\n416#1,5:1523\n384#1:1528\n1026#1,2:1529\n385#1,2:1531\n1028#1:1533\n387#1:1534\n384#1:1535\n1026#1,2:1536\n385#1,2:1538\n1028#1:1540\n387#1:1541\n1026#1,3:1542\n408#1,2:1545\n408#1,2:1547\n652#1,4:1549\n625#1,4:1553\n639#1,4:1557\n682#1,4:1561\n747#1,5:1565\n788#1,3:1570\n791#1,3:1580\n806#1,3:1583\n809#1,3:1593\n904#1,3:1610\n876#1,4:1613\n865#1:1617\n1026#1,3:1618\n866#1:1621\n1026#1,3:1622\n895#1:1625\n1017#1,2:1626\n896#1:1628\n1017#1,2:1629\n1455#1,6:1631\n1485#1,7:1637\n307#2,7:1573\n307#2,7:1586\n307#2,7:1596\n307#2,7:1603\n*E\n*S KotlinDebug\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n50#1,2:1511\n58#1,5:1513\n350#1,5:1518\n357#1,5:1523\n366#1:1528\n366#1,2:1529\n366#1,2:1531\n366#1:1533\n366#1:1534\n375#1:1535\n375#1,2:1536\n375#1,2:1538\n375#1:1540\n375#1:1541\n384#1,3:1542\n394#1,2:1545\n401#1,2:1547\n589#1,4:1549\n602#1,4:1553\n614#1,4:1557\n671#1,4:1561\n740#1,5:1565\n763#1,3:1570\n763#1,3:1580\n776#1,3:1583\n776#1,3:1593\n835#1,3:1610\n845#1,4:1613\n855#1:1617\n855#1,3:1618\n855#1:1621\n865#1,3:1622\n887#1:1625\n887#1,2:1626\n887#1:1628\n895#1,2:1629\n1444#1,6:1631\n1472#1,7:1637\n763#1,7:1573\n776#1,7:1586\n790#1,7:1596\n808#1,7:1603\n*E\n"
.end annotation


# direct methods
.method public static final drop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$drop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
