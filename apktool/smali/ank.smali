.class final Lank;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavw",
        "<",
        "Lanl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanj;


# direct methods
.method constructor <init>(Lanj;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lank;->a:Lanj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lanl;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Lanl;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lanl;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lank;->b()Lanl;

    move-result-object v0

    return-object v0
.end method
