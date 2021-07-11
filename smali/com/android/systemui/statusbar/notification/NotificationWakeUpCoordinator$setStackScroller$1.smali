.class final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->isPulseExpanding()Z

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->access$getPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->access$setPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Z)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->access$getWakeUpListeners$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 167
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onPulseExpansionChanged(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
