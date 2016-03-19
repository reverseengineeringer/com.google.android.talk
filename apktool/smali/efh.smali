.class public final enum Lefh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lefh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lefh;

.field public static final enum b:Lefh;

.field public static final enum c:Lefh;

.field public static final enum d:Lefh;

.field public static final enum e:Lefh;

.field private static final synthetic h:[Lefh;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Liph;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lefh;

    const-string v1, "HANGOUTS_API"

    const-string v2, "https://www.googleapis.com/chat/v1android/"

    const-string v3, "debug.conserver.frontend.url"

    invoke-direct {v0, v1, v4, v2, v3}, Lefh;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lefh;->a:Lefh;

    .line 31
    new-instance v0, Lefh;

    const-string v1, "HANGOUTS_UPLOAD_API"

    const-string v2, "https://www.googleapis.com/upload/chat/v1android/"

    const-string v3, "debug.conserver.upload.url"

    invoke-direct {v0, v1, v5, v2, v3}, Lefh;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lefh;->b:Lefh;

    .line 36
    new-instance v0, Lefh;

    const-string v1, "MESI_API"

    const-string v2, "https://www.googleapis.com/hangouts/v1android/"

    const-string v3, "debug.mesi.frontend.url"

    invoke-direct {v0, v1, v6, v2, v3}, Lefh;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lefh;->c:Lefh;

    .line 40
    new-instance v0, Lefh;

    const-string v1, "PLUSI"

    const-string v2, "https://www.googleapis.com/plusi/v3/ozInternal/"

    const-string v3, "debug.plus.frontend.url"

    invoke-direct {v0, v1, v7, v2, v3}, Lefh;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lefh;->d:Lefh;

    .line 44
    new-instance v0, Lefh;

    const-string v1, "GOOGLE_VOICE"

    const-string v2, "https://www.googleapis.com/voice/v1/"

    const-string v3, "debug.voice.frotend.url"

    invoke-direct {v0, v1, v8, v2, v3}, Lefh;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lefh;->e:Lefh;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lefh;

    sget-object v1, Lefh;->a:Lefh;

    aput-object v1, v0, v4

    sget-object v1, Lefh;->b:Lefh;

    aput-object v1, v0, v5

    sget-object v1, Lefh;->c:Lefh;

    aput-object v1, v0, v6

    sget-object v1, Lefh;->d:Lefh;

    aput-object v1, v0, v7

    sget-object v1, Lefh;->e:Lefh;

    aput-object v1, v0, v8

    sput-object v0, Lefh;->h:[Lefh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p4, p0, Lefh;->f:Ljava/lang/String;

    .line 57
    new-instance v0, Liph;

    invoke-direct {v0, p4, p3}, Liph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lefh;->g:Liph;

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lefh;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lefh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lefh;

    return-object v0
.end method

.method public static values()[Lefh;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lefh;->h:[Lefh;

    invoke-virtual {v0}, [Lefh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lefh;

    return-object v0
.end method
