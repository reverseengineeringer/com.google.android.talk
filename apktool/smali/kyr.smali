.class public abstract Lkyr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkyr;

.field private static final b:Lkyr;

.field private static final c:Lkyr;

.field private static final d:Lkyr;

.field private static final e:Lkyr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 333
    new-instance v0, Lkyu;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 334
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkyu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lkyr;->b:Lkyr;

    .line 354
    new-instance v0, Lkyu;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 355
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkyu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lkyr;->a:Lkyr;

    .line 376
    new-instance v0, Lkyw;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 377
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkyw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lkyr;->c:Lkyr;

    .line 397
    new-instance v0, Lkyw;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 398
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkyw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lkyr;->d:Lkyr;

    .line 417
    new-instance v0, Lkyt;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lkyt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lkyr;->e:Lkyr;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method abstract a([BLjava/lang/CharSequence;)I
.end method

.method abstract a()Lkmn;
.end method

.method public final a(Ljava/lang/CharSequence;)[B
    .locals 5

    .prologue
    .line 1238
    :try_start_0
    invoke-virtual {p0}, Lkyr;->a()Lkmn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkmn;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lkyr;->a(I)I

    move-result v0

    new-array v0, v0, [B

    .line 1240
    invoke-virtual {p0, v0, v1}, Lkyr;->a([BLjava/lang/CharSequence;)I

    move-result v2

    .line 2197
    array-length v1, v0

    if-ne v2, v1, :cond_0

    .line 2198
    :goto_0
    return-object v0

    .line 2200
    :cond_0
    new-array v1, v2, [B

    .line 2201
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lkyv; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 223
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
