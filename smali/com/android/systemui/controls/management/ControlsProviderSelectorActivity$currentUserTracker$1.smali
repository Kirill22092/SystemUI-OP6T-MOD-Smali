.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final startingUser:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {p0, p3}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->access$getListingController$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/util/UserAwareController;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;->startingUser:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
