.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBypassController;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->access$setPendingUnlock$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;)V

    return-void
.end method
