.class public abstract Lkmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkns",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkmn;

.field public static final b:Lkmn;

.field public static final c:Lkmn;

.field public static final d:Lkmn;

.field public static final e:Lkmn;

.field public static final f:Lkmn;

.field public static final g:Lkmn;

.field public static final h:Lkmn;

.field public static final i:Lkmn;

.field public static final j:Lkmn;

.field public static final k:Lkmn;

.field public static final l:Lkmn;

.field public static final m:Lkmn;

.field public static final n:Lkmn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1092
    sget-object v0, Lknf;->p:Lknf;

    .line 226
    sput-object v0, Lkmn;->a:Lkmn;

    .line 1103
    sget-object v0, Lkmq;->o:Lkmn;

    .line 235
    sput-object v0, Lkmn;->b:Lkmn;

    .line 1112
    sget-object v0, Lkmp;->o:Lkmp;

    .line 240
    sput-object v0, Lkmn;->c:Lkmn;

    .line 1123
    sget-object v0, Lkmr;->o:Lkmr;

    .line 247
    sput-object v0, Lkmn;->d:Lkmn;

    .line 1134
    sget-object v0, Lkmv;->o:Lkmv;

    .line 254
    sput-object v0, Lkmn;->e:Lkmn;

    .line 1145
    sget-object v0, Lkmx;->o:Lkmx;

    .line 261
    sput-object v0, Lkmn;->f:Lkmn;

    .line 1155
    sget-object v0, Lkmy;->o:Lkmy;

    .line 267
    sput-object v0, Lkmn;->g:Lkmn;

    .line 1165
    sget-object v0, Lkna;->o:Lkna;

    .line 273
    sput-object v0, Lkmn;->h:Lkmn;

    .line 1175
    sget-object v0, Lkmz;->o:Lkmz;

    .line 279
    sput-object v0, Lkmn;->i:Lkmn;

    .line 1185
    sget-object v0, Lkmw;->o:Lkmw;

    .line 285
    sput-object v0, Lkmn;->j:Lkmn;

    .line 1196
    sget-object v0, Lkmt;->o:Lkmt;

    .line 292
    sput-object v0, Lkmn;->k:Lkmn;

    .line 1210
    sget-object v0, Lkne;->o:Lkne;

    .line 302
    sput-object v0, Lkmn;->l:Lkmn;

    .line 2067
    sget-object v0, Lkmo;->o:Lkmo;

    .line 305
    sput-object v0, Lkmn;->m:Lkmn;

    .line 2076
    sget-object v0, Lknc;->o:Lknc;

    .line 308
    sput-object v0, Lkmn;->n:Lkmn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Lkmn;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lkmu;

    invoke-direct {v0, p0}, Lkmu;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 815
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 816
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lkmn;->b(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    :goto_1
    return-object v0

    .line 815
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 820
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public a(Ljava/lang/Character;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lkmn;->b(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lkmn;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public abstract b(C)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
