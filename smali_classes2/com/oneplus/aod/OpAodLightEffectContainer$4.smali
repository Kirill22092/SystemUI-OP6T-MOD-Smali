.class Lcom/oneplus/aod/OpAodLightEffectContainer$4;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "mFrameRunnable: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v5, "OpAodLightEffectContainer"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_1c
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    if-ltz v5, :cond_98

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_98

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_98

    .line 220
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v5, :cond_81

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v2, "sb2":Ljava/lang/StringBuilder;
    const-string v5, "mBitmapLeft is recycled, mAnimateIndex: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v5, "OpAodLightEffectContainer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    .line 256
    .end local v2    # "sb2":Ljava/lang/StringBuilder;
    :goto_80
    return-void

    .line 228
    :cond_81
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v7}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    :cond_98
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    if-ltz v5, :cond_136

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_136

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_136

    .line 231
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v5, :cond_11f

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v3, "sb3":Ljava/lang/StringBuilder;
    const-string v5, "mBitmapRight is recycled, mAnimateIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v5, "OpAodLightEffectContainer"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_fc} :catch_fd

    goto :goto_80

    .line 249
    .end local v3    # "sb3":Ljava/lang/StringBuilder;
    :catch_fd
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v4, "sb4":Ljava/lang/StringBuilder;
    const-string v5, "mFrameRunnable error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v5, "OpAodLightEffectContainer"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "sb4":Ljava/lang/StringBuilder;
    :goto_118
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    goto/16 :goto_80

    .line 239
    :cond_11f
    :try_start_11f
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v7}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    :cond_136
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_157

    .line 242
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v7}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_118

    .line 245
    :cond_157
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_16f} :catch_fd

    goto :goto_118
.end method
