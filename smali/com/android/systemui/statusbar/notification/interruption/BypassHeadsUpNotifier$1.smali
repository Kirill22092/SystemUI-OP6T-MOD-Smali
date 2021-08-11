.class final Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/tuner/TunerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->access$getContext$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    const-string/jumbo v0, "show_media_when_bypassing"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->access$setEnabled$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Z)V

    return-void
.end method
