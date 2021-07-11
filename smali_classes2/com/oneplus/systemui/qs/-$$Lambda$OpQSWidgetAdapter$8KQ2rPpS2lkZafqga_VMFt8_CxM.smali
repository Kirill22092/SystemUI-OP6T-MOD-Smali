.class public final synthetic Lcom/oneplus/systemui/qs/-$$Lambda$OpQSWidgetAdapter$8KQ2rPpS2lkZafqga_VMFt8_CxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/systemui/qs/-$$Lambda$OpQSWidgetAdapter$8KQ2rPpS2lkZafqga_VMFt8_CxM;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/qs/-$$Lambda$OpQSWidgetAdapter$8KQ2rPpS2lkZafqga_VMFt8_CxM;->f$0:I

    check-cast p1, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->lambda$removeItem$0(ILcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Z

    move-result p0

    return p0
.end method
