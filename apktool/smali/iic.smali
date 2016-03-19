.class public abstract Liic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)Liic;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Liij;

    invoke-direct {v0, p0, p1, p2}, Liij;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method
