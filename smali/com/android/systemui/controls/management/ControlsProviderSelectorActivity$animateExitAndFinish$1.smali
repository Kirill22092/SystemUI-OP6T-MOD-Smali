.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;
.super Ljava/lang/Object;
.source "ControlsProviderSelectorActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;->this$0:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
