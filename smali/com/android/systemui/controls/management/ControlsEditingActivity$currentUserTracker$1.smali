.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ControlsEditingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsEditingActivity;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final startingUser:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0, p3}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 62
    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getController$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;->startingUser:I

    if-eq p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
