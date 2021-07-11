.class public Lcom/android/systemui/bubbles/BubbleLoggerImpl;
.super Lcom/android/internal/logging/UiEventLoggerImpl;
.source "BubbleLoggerImpl.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getAppUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logOverflowAdd(Lcom/android/systemui/bubbles/Bubble;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 62
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 64
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public logOverflowRemove(Lcom/android/systemui/bubbles/Bubble;I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 46
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 48
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 50
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 52
    sget-object p2, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_3
    :goto_0
    return-void
.end method
