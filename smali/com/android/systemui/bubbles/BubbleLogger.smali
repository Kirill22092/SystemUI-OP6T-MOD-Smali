.class public interface abstract Lcom/android/systemui/bubbles/BubbleLogger;
.super Ljava/lang/Object;
.source "BubbleLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleLogger$Event;
    }
.end annotation


# virtual methods
.method public abstract log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
.end method

.method public abstract logOverflowAdd(Lcom/android/systemui/bubbles/Bubble;I)V
.end method

.method public abstract logOverflowRemove(Lcom/android/systemui/bubbles/Bubble;I)V
.end method
