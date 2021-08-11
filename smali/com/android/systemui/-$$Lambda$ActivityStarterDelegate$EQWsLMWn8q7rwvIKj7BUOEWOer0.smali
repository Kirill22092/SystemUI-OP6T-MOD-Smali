.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;->f$0:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;->f$0:Landroid/content/Intent;

    iget-boolean p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;->f$1:Z

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$4(Landroid/content/Intent;ZLdagger/Lazy;)V

    return-void
.end method
