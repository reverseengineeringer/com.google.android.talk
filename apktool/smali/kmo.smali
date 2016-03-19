.class final Lkmo;
.super Lknb;
.source "SourceFile"


# static fields
.field static final o:Lkmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1016
    new-instance v0, Lkmo;

    invoke-direct {v0}, Lkmo;-><init>()V

    sput-object v0, Lkmo;->o:Lkmo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1019
    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lknb;-><init>(Ljava/lang/String;)V

    .line 1020
    return-void
.end method


# virtual methods
.method public b(C)Z
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    return v0
.end method
