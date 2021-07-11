.class Lcom/android/keyguard/KeyguardAssistantView$1;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAssistantView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$1;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$1;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$100(Lcom/android/keyguard/KeyguardAssistantView;)V

    return-void
.end method
