.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleData;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    iput p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;->f$1:I

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$removeBubblesWithPackageName$3$BubbleData(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
