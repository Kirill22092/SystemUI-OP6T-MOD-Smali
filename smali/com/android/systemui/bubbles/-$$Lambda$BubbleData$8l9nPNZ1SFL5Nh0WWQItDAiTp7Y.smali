.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$8l9nPNZ1SFL5Nh0WWQItDAiTp7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$8l9nPNZ1SFL5Nh0WWQItDAiTp7Y;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$8l9nPNZ1SFL5Nh0WWQItDAiTp7Y;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$trim$5$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
