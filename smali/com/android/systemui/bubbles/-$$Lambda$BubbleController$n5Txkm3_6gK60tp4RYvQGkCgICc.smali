.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$n5Txkm3_6gK60tp4RYvQGkCgICc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$n5Txkm3_6gK60tp4RYvQGkCgICc;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$n5Txkm3_6gK60tp4RYvQGkCgICc;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$n5Txkm3_6gK60tp4RYvQGkCgICc(Lcom/android/systemui/bubbles/BubbleController;Z)V

    return-void
.end method
