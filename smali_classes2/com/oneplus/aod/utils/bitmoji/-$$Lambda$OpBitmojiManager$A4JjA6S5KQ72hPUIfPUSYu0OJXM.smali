.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->lambda$onImagePackUpdate$0$OpBitmojiManager(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
