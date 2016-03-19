.class public final Lfac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfac;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lfac;->b:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lfac;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfac;->d:Z

    .line 47
    iput p3, p0, Lfac;->e:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfac;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lfac;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lfac;->c:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfac;->d:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lfac;->e:I

    .line 36
    return-void
.end method
