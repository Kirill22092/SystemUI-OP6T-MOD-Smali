.class public final synthetic Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1$9Ann_QTbgpTliOGHxLahg53IcD4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;

.field public final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1$9Ann_QTbgpTliOGHxLahg53IcD4;->f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1$9Ann_QTbgpTliOGHxLahg53IcD4;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1$9Ann_QTbgpTliOGHxLahg53IcD4;->f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1$9Ann_QTbgpTliOGHxLahg53IcD4;->f$1:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;->lambda$onSystemGestureExclusionChanged$0$OpEdgeNavGestureHandler$1(Landroid/graphics/Region;)V

    return-void
.end method
