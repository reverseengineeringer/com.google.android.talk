.class public final Labp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Float;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Labp;->a:Landroid/content/Intent;

    .line 1154
    iput-boolean v1, p0, Labp;->k:Z

    .line 1155
    iput-boolean v1, p0, Labp;->p:Z

    .line 1156
    iput-boolean v1, p0, Labp;->q:Z

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Labp;->i:Z

    .line 145
    return-void
.end method


# virtual methods
.method public a()Labp;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Labp;->p:Z

    .line 253
    return-object p0
.end method

.method public a(F)Labp;
    .locals 1

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Labp;->h:Ljava/lang/Float;

    .line 213
    return-object p0
.end method

.method public a(IIII)Labp;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Labp;->k:Z

    .line 240
    iput p1, p0, Labp;->l:I

    .line 241
    iput p2, p0, Labp;->m:I

    .line 242
    iput p3, p0, Labp;->n:I

    .line 243
    iput p4, p0, Labp;->o:I

    .line 244
    return-object p0
.end method

.method public a(Ljava/lang/String;)Labp;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Labp;->c:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public a(Z)Labp;
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Labp;->q:Z

    .line 267
    return-object p0
.end method

.method public a([Ljava/lang/String;)Labp;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Labp;->f:[Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public b(Ljava/lang/String;)Labp;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Labp;->d:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const/high16 v1, 0x4080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Labp;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "photo_index"

    iget-object v2, p0, Labp;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :cond_0
    iget-object v0, p0, Labp;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "initial_photo_uri"

    iget-object v2, p0, Labp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_1
    iget-object v0, p0, Labp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labp;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "specified both photo index and photo uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_2
    iget-object v0, p0, Labp;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "photos_uri"

    iget-object v2, p0, Labp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    iget-object v1, p0, Labp;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 304
    :cond_3
    iget-object v0, p0, Labp;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "resolved_photo_uri"

    iget-object v2, p0, Labp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_4
    iget-object v0, p0, Labp;->f:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "projection"

    iget-object v2, p0, Labp;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    :cond_5
    iget-object v0, p0, Labp;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "thumbnail_uri"

    iget-object v2, p0, Labp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_6
    iget-object v0, p0, Labp;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 317
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "max_scale"

    iget-object v2, p0, Labp;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 320
    :cond_7
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "watch_network"

    iget-boolean v2, p0, Labp;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "scale_up_animation"

    iget-boolean v2, p0, Labp;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-boolean v0, p0, Labp;->k:Z

    if-eqz v0, :cond_8

    .line 324
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "start_x_extra"

    iget v2, p0, Labp;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "start_y_extra"

    iget v2, p0, Labp;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "start_width_extra"

    iget v2, p0, Labp;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "start_height_extra"

    iget v2, p0, Labp;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    :cond_8
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "action_bar_hidden_initially"

    iget-boolean v2, p0, Labp;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "display_thumbs_fullscreen"

    iget-boolean v2, p0, Labp;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    const-string v1, "enable_timer_lights_out"

    iget-boolean v2, p0, Labp;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Labp;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Labp;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Labp;->e:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public d(Ljava/lang/String;)Labp;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Labp;->g:Ljava/lang/String;

    .line 205
    return-object p0
.end method
