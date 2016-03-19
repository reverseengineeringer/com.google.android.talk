.class final Lgvq;
.super Lgvp;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lgvp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lgvr;

    invoke-direct {v0, p0}, Lgvr;-><init>(Lgvq;)V

    sput-object v0, Lgvs;->c:Laat;

    .line 34
    return-void
.end method
