.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;->f$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;->f$0:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->lambda$onMotionEvent$1$PipResizeGestureHandler(Landroid/graphics/Rect;)V

    return-void
.end method
