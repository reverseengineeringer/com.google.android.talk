.class public abstract Lakr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lakr;

.field public static final b:Lakr;

.field public static final c:Lakr;

.field public static final d:Lakr;

.field public static final e:Lakr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Laks;

    invoke-direct {v0}, Laks;-><init>()V

    sput-object v0, Lakr;->a:Lakr;

    .line 41
    new-instance v0, Lakt;

    invoke-direct {v0}, Lakt;-><init>()V

    sput-object v0, Lakr;->b:Lakr;

    .line 67
    new-instance v0, Laku;

    invoke-direct {v0}, Laku;-><init>()V

    sput-object v0, Lakr;->c:Lakr;

    .line 93
    new-instance v0, Lakv;

    invoke-direct {v0}, Lakv;-><init>()V

    sput-object v0, Lakr;->d:Lakr;

    .line 123
    new-instance v0, Lakw;

    invoke-direct {v0}, Lakw;-><init>()V

    sput-object v0, Lakr;->e:Lakr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(Lair;)Z
.end method

.method public abstract a(ZLair;Lait;)Z
.end method

.method public abstract b()Z
.end method
