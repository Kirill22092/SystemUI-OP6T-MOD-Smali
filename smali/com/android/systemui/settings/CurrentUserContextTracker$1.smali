.class public final Lcom/android/systemui/settings/CurrentUserContextTracker$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "CurrentUserContextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/CurrentUserContextTracker;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/CurrentUserContextTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/CurrentUserContextTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserContextTracker$1;->this$0:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-direct {p0, p3}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker$1;->this$0:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/CurrentUserContextTracker;->handleUserSwitched(I)V

    return-void
.end method
