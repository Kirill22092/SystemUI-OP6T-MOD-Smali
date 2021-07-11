.class public final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$getEntries$p(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$removeEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$addEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$update(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    :cond_0
    return-void
.end method
