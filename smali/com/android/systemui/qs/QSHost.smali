.class public interface abstract Lcom/android/systemui/qs/QSHost;
.super Ljava/lang/Object;
.source "QSHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapsePanels()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getNewInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;
.end method

.method public abstract getTileServices()Lcom/android/systemui/qs/external/TileServices;
.end method

.method public abstract getUiEventLogger()Lcom/android/internal/logging/UiEventLogger;
.end method

.method public abstract getUserContext()Landroid/content/Context;
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract openPanels()V
.end method

.method public abstract removeTile(Ljava/lang/String;)V
.end method

.method public abstract unmarkTileAsAutoAdded(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
