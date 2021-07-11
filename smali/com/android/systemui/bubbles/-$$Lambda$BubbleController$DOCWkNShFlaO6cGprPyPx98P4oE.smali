.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$DOCWkNShFlaO6cGprPyPx98P4oE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$DOCWkNShFlaO6cGprPyPx98P4oE;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$DOCWkNShFlaO6cGprPyPx98P4oE;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$6$BubbleController(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
