.class Lcom/android/systemui/bubbles/BubbleController$6;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;->setupNEM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$6;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRemoveRequested(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    if-ne p3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, p1

    :goto_2
    const/16 v3, 0x8

    if-eq p3, v3, :cond_4

    const/16 v3, 0x9

    if-ne p3, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v3, p1

    :goto_4
    const/16 v4, 0xc

    if-ne p3, v4, :cond_5

    move p3, p1

    goto :goto_5

    :cond_5
    move p3, v0

    :goto_5
    if-eqz p2, :cond_6

    .line 585
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    move p1, v0

    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 589
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$6;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleController;->handleDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    :cond_9
    return v0
.end method
