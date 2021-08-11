.class Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$1;
.super Ljava/lang/Object;
.source "AudioTrigger.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->checkAudioActive()V

    return-void
.end method
