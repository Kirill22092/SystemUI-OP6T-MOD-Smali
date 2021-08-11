.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$3l4urKvsZCQadEpiHWxUBGPGyvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$3l4urKvsZCQadEpiHWxUBGPGyvY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$3l4urKvsZCQadEpiHWxUBGPGyvY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result p0

    return p0
.end method
