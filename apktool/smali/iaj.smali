.class public final Liaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Liaj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lhzu;

.field public s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lhzw;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/os/Bundle;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lial;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Liak;

    invoke-direct {v0}, Liak;-><init>()V

    sput-object v0, Liaj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "com.google.android.libraries.social.login.LoginRequest.DEFAULT_ERROR_TOAST"

    iput-object v0, p0, Liaj;->b:Ljava/lang/String;

    .line 42
    iput v1, p0, Liaj;->c:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaj;->d:Z

    .line 50
    iput v1, p0, Liaj;->k:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaj;->u:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "com.google.android.libraries.social.login.LoginRequest.DEFAULT_ERROR_TOAST"

    iput-object v0, p0, Liaj;->b:Ljava/lang/String;

    .line 42
    iput v3, p0, Liaj;->c:I

    .line 43
    iput-boolean v1, p0, Liaj;->d:Z

    .line 50
    iput v3, p0, Liaj;->k:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaj;->u:Ljava/util/List;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->a:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->b:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->e:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Liaj;->f:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Liaj;->g:Z

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Liaj;->h:Z

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Liaj;->i:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_5

    :goto_4
    iput-boolean v1, p0, Liaj;->j:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Liaj;->k:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->l:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->m:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->n:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Liaj;->c:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->o:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->p:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liaj;->q:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lhzu;

    iput-object v0, p0, Liaj;->r:Lhzu;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Liaj;->t:Landroid/os/Bundle;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 319
    if-eqz v0, :cond_0

    .line 321
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Liaj;->s:Ljava/lang/Class;

    .line 324
    :cond_0
    array-length v0, v1

    if-lez v0, :cond_6

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Liaj;->u:Ljava/util/List;

    .line 327
    :goto_5
    array-length v0, v1

    if-ge v2, v0, :cond_6

    .line 328
    iget-object v0, p0, Liaj;->u:Ljava/util/List;

    aget-object v3, v1, v2

    .line 329
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 328
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1
    move v0, v2

    .line 298
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 299
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 300
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 301
    goto/16 :goto_3

    :cond_5
    move v1, v2

    .line 302
    goto/16 :goto_4

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "LoginRequest"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 334
    const-string v1, "LoginRequest"

    const-string v2, "Could not deserialize class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :cond_6
    return-void
.end method


# virtual methods
.method public a()Liaj;
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaj;->f:Z

    .line 78
    invoke-virtual {p0}, Liaj;->b()Liaj;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Liaj;
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Liaj;->c:I

    .line 102
    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Liaj;
    .locals 4

    .prologue
    .line 111
    const-string v0, "account_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Liaj;->k:I

    .line 113
    const-class v0, Lgwc;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwc;

    .line 114
    invoke-interface {v0, p1, p2}, Lgwc;->a(Landroid/content/Context;Landroid/content/Intent;)Lgwd;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, v0, Lgwd;->a:Ljava/lang/String;

    iput-object v1, p0, Liaj;->l:Ljava/lang/String;

    .line 117
    iget-object v0, v0, Lgwd;->b:Ljava/lang/String;

    iput-object v0, p0, Liaj;->m:Ljava/lang/String;

    .line 120
    :cond_0
    const-string v0, "viewerid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    .line 122
    if-eqz v1, :cond_3

    .line 123
    const-string v0, "effectiveid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 139
    iput-object v1, p0, Liaj;->n:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Liaj;->m:Ljava/lang/String;

    .line 143
    :cond_2
    return-object p0

    .line 125
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_1

    .line 128
    :try_start_0
    const-string v3, "viewerid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_1

    .line 130
    const-string v3, "effectiveid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Liaj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lhzw;",
            ">;)",
            "Liaj;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lhzw;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Liaj;"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Liaj;->s:Ljava/lang/Class;

    .line 217
    iput-object p2, p0, Liaj;->t:Landroid/os/Bundle;

    .line 218
    return-object p0
.end method

.method public a(Ljava/lang/String;)Liaj;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Liaj;->o:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Liaj;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Liaj;->o:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Liaj;->p:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public b()Liaj;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaj;->g:Z

    .line 94
    return-object p0
.end method

.method public c()Liaj;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaj;->h:Z

    .line 151
    return-object p0
.end method

.method public d()Liaj;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Liaj;->d:Z

    .line 228
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Liaj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Liaj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Liaj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Liaj;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean v0, p0, Liaj;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Liaj;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v0, p0, Liaj;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-boolean v0, p0, Liaj;->j:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Liaj;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Liaj;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Liaj;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Liaj;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Liaj;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v0, p0, Liaj;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Liaj;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Liaj;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Liaj;->r:Lhzu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 279
    iget-object v0, p0, Liaj;->s:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Liaj;->s:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Liaj;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Liaj;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 287
    iget-object v0, p0, Liaj;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 288
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    move v2, v1

    .line 289
    goto :goto_6

    :cond_0
    move v0, v2

    .line 264
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 265
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 266
    goto :goto_2

    :cond_3
    move v0, v2

    .line 267
    goto :goto_3

    :cond_4
    move v1, v2

    .line 268
    goto :goto_4

    .line 281
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 290
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 291
    return-void
.end method
