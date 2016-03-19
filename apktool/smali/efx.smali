.class public final Lefx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p1, p0, Lefx;->a:I

    .line 297
    iput-object p2, p0, Lefx;->b:Ljava/lang/String;

    .line 298
    iput p3, p0, Lefx;->c:I

    .line 299
    iput-object p4, p0, Lefx;->d:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lefx;->e:Ljava/lang/Long;

    .line 301
    iput-object v0, p0, Lefx;->f:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lefx;->g:Ljava/lang/String;

    .line 303
    iput-object v0, p0, Lefx;->h:Ljava/lang/String;

    .line 304
    return-void
.end method

.method private constructor <init>(Lmel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iget-object v0, p1, Lmel;->a:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 252
    iput v0, p0, Lefx;->a:I

    .line 254
    iget-object v0, p1, Lmel;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmel;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lefx;->b:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lmel;->c:Lmei;

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p1, Lmel;->c:Lmei;

    iget-object v0, v0, Lmei;->a:Ljava/lang/Boolean;

    .line 2015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_7

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_1
    iget-object v2, p1, Lmel;->c:Lmei;

    iget-object v2, v2, Lmei;->b:Ljava/lang/Boolean;

    .line 3015
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 260
    if-eqz v2, :cond_0

    .line 261
    or-int/lit8 v0, v0, 0x2

    .line 263
    :cond_0
    iget-object v2, p1, Lmel;->c:Lmei;

    iget-object v2, v2, Lmei;->c:Ljava/lang/Boolean;

    .line 4015
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 263
    if-eqz v2, :cond_1

    .line 264
    or-int/lit8 v0, v0, 0x4

    .line 266
    :cond_1
    iget-object v2, p1, Lmel;->c:Lmei;

    iget-object v2, v2, Lmei;->d:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 266
    if-eqz v1, :cond_2

    .line 267
    or-int/lit8 v0, v0, 0x8

    .line 270
    :cond_2
    :goto_2
    iput v0, p0, Lefx;->c:I

    .line 271
    iget-object v0, p1, Lmel;->d:Lmek;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p1, Lmel;->d:Lmek;

    iget-object v0, v0, Lmek;->a:Ljava/lang/String;

    iput-object v0, p0, Lefx;->d:Ljava/lang/String;

    .line 276
    :goto_3
    iget-object v0, p1, Lmel;->e:Lmen;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p1, Lmel;->e:Lmen;

    iget-object v0, v0, Lmen;->a:Ljava/lang/Long;

    .line 5051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lefx;->e:Ljava/lang/Long;

    .line 279
    iget-object v0, p1, Lmel;->e:Lmen;

    iget-object v0, v0, Lmen;->b:Ljava/lang/String;

    iput-object v0, p0, Lefx;->f:Ljava/lang/String;

    .line 280
    iget-object v0, p1, Lmel;->e:Lmen;

    iget-object v0, v0, Lmen;->c:Ljava/lang/String;

    iput-object v0, p0, Lefx;->g:Ljava/lang/String;

    .line 286
    :goto_4
    iget-object v0, p1, Lmel;->f:Lmej;

    if-eqz v0, :cond_6

    .line 287
    iget-object v0, p1, Lmel;->f:Lmej;

    iget-object v0, v0, Lmej;->a:Ljava/lang/String;

    iput-object v0, p0, Lefx;->h:Ljava/lang/String;

    .line 291
    :goto_5
    return-void

    .line 254
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 274
    :cond_4
    iput-object v4, p0, Lefx;->d:Ljava/lang/String;

    goto :goto_3

    .line 282
    :cond_5
    iput-object v4, p0, Lefx;->e:Ljava/lang/Long;

    .line 283
    iput-object v4, p0, Lefx;->f:Ljava/lang/String;

    .line 284
    iput-object v4, p0, Lefx;->g:Ljava/lang/String;

    goto :goto_4

    .line 289
    :cond_6
    iput-object v4, p0, Lefx;->h:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public static a([Lmel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lefx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 246
    new-instance v4, Lefx;

    invoke-direct {v4, v3}, Lefx;-><init>(Lmel;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v1
.end method
