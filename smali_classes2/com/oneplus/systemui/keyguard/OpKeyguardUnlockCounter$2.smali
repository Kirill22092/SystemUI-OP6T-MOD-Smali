.class Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$2;
.super Ljava/lang/Object;
.source "OpKeyguardUnlockCounter.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$2;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUnlockCounter"

    const-string v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$2;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$100(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    return-void
.end method
