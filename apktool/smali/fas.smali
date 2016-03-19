.class final Lfas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfar;


# direct methods
.method constructor <init>(Lfar;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lfas;->a:Lfar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lfas;->a:Lfar;

    .line 1090
    iget v0, v0, Lfar;->e:I

    .line 186
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfas;->a:Lfar;

    .line 2090
    iget v0, v0, Lfar;->e:I

    .line 187
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfas;->a:Lfar;

    .line 3090
    iget v0, v0, Lfar;->e:I

    .line 188
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lfas;->a:Lfar;

    .line 4090
    iget-object v0, v0, Lfar;->c:Landroid/content/Context;

    .line 191
    iget-object v1, p0, Lfas;->a:Lfar;

    .line 5090
    iget-object v1, v1, Lfar;->c:Landroid/content/Context;

    .line 191
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->x:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 190
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v0, p0, Lfas;->a:Lfar;

    invoke-virtual {v0}, Lfar;->j()V

    .line 195
    iget-object v0, p0, Lfas;->a:Lfar;

    .line 6222
    const/4 v1, 0x0

    iput-object v1, v0, Lfar;->d:Ljava/lang/String;

    .line 197
    :cond_1
    return-void
.end method
