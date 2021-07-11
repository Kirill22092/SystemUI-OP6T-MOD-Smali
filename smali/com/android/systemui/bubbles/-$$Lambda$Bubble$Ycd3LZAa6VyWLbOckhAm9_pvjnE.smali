.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/Bubble;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;->f$0:Lcom/android/systemui/bubbles/Bubble;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;->f$1:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;->f$0:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$Bubble$Ycd3LZAa6VyWLbOckhAm9_pvjnE;->f$1:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/bubbles/Bubble;->lambda$new$0$Bubble(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V

    return-void
.end method
