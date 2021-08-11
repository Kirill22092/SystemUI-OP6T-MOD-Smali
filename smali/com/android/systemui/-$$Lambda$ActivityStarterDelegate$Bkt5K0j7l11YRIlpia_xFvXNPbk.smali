.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;->f$0:Landroid/content/Intent;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;->f$0:Landroid/content/Intent;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;->f$1:I

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$7(Landroid/content/Intent;ILdagger/Lazy;)V

    return-void
.end method
