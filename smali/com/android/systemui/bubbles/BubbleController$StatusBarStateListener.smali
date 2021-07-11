.class Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->mState:I

    return p0
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 331
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->mState:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 339
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->access$002(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 342
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStack()V

    return-void
.end method
