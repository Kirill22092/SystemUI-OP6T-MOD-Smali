.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$PLQsiLSkjaG6xwZdvFK_TGqwDWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$PLQsiLSkjaG6xwZdvFK_TGqwDWU;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$PLQsiLSkjaG6xwZdvFK_TGqwDWU;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->lambda$updateCurrentProfilesCache$1$NotificationLockscreenUserManagerImpl()V

    return-void
.end method
