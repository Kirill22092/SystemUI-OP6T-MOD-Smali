.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistManager$jug05Nabf2QR7m1yWlGRXdMVfIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$jug05Nabf2QR7m1yWlGRXdMVfIs;->f$0:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$jug05Nabf2QR7m1yWlGRXdMVfIs;->f$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->lambda$canVoiceAssistBeLaunchedFromKeyguard$1$AssistManager()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
