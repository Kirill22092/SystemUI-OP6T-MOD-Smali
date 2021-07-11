.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ntMGdPXHlgGHJa34MKvZ31nUwKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ntMGdPXHlgGHJa34MKvZ31nUwKY;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ntMGdPXHlgGHJa34MKvZ31nUwKY;->f$0:Landroid/app/PendingIntent;

    check-cast p1, Ldagger/Lazy;

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$8(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method
