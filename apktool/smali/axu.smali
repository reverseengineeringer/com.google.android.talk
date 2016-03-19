.class public final Laxu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ldtw;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public a()Laxt;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Laxt;

    invoke-direct {v0, p0}, Laxt;-><init>(Laxu;)V

    return-object v0
.end method

.method public a(Ldtw;)Laxu;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Laxu;->a:Ldtw;

    .line 149
    return-object p0
.end method

.method public a(Ljava/lang/String;)Laxu;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Laxu;->b:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public b(Ljava/lang/String;)Laxu;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Laxu;->d:Ljava/lang/String;

    .line 172
    return-object p0
.end method
