.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior.java"

# interfaces
.implements Lcom/android/systemui/BootCompleteCache$BootCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$600(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$502(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 167
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$700(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->updateSupportAssistantGestureState(Landroid/content/Context;)V

    return-void
.end method
