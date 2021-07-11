.class final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/DungeonRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->$child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->$child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$removeEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$update(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->unDismiss()V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    const-string p1, "ForegroundServiceSectionController.onClick"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
