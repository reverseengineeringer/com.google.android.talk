.class final Leen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldha;


# instance fields
.field final synthetic a:Leem;


# direct methods
.method constructor <init>(Leem;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Leen;->a:Leem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ldgz;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Leeo;

    const-string v1, "Debug Wakelocks Activity"

    invoke-direct {v0, p0, v1, p1}, Leeo;-><init>(Leen;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method
